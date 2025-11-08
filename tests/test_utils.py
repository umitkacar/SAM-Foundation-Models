"""Tests for utils module."""

from __future__ import annotations

from pathlib import Path

import pytest

from awesome_sam.utils import get_model_info, validate_image_path


class TestGetModelInfo:
    """Tests for get_model_info function."""

    def test_valid_model_name(self) -> None:
        """Test with valid model name."""
        info = get_model_info("sam2-hiera-large")
        assert info["name"] == "sam2-hiera-large"
        assert info["version"] == "2.1"
        assert info["type"] == "foundation"

    def test_empty_model_name(self) -> None:
        """Test with empty model name."""
        with pytest.raises(ValueError, match="model_name cannot be empty"):
            get_model_info("")

    def test_returns_dict(self) -> None:
        """Test that function returns a dictionary."""
        info = get_model_info("test-model")
        assert isinstance(info, dict)
        assert "name" in info
        assert "version" in info
        assert "type" in info


class TestValidateImagePath:
    """Tests for validate_image_path function."""

    def test_valid_path_string(self, tmp_path: Path) -> None:
        """Test with valid path as string."""
        test_file = tmp_path / "test.jpg"
        test_file.touch()

        result = validate_image_path(str(test_file))
        assert isinstance(result, Path)
        assert result == test_file

    def test_valid_path_object(self, tmp_path: Path) -> None:
        """Test with valid Path object."""
        test_file = tmp_path / "test.jpg"
        test_file.touch()

        result = validate_image_path(test_file)
        assert isinstance(result, Path)
        assert result == test_file

    def test_nonexistent_file(self, tmp_path: Path) -> None:
        """Test with nonexistent file."""
        nonexistent = tmp_path / "nonexistent.jpg"

        with pytest.raises(FileNotFoundError, match="Image file not found"):
            validate_image_path(nonexistent)

    def test_directory_path(self, tmp_path: Path) -> None:
        """Test with directory path."""
        with pytest.raises(ValueError, match="Path is not a file"):
            validate_image_path(tmp_path)


@pytest.mark.slow
class TestIntegration:
    """Integration tests."""

    def test_full_workflow(self, tmp_path: Path) -> None:
        """Test complete workflow."""
        # Create test image
        test_image = tmp_path / "test_image.jpg"
        test_image.touch()

        # Get model info
        model_info = get_model_info("sam2")

        # Validate image path
        validated_path = validate_image_path(test_image)

        # Assertions
        assert model_info["name"] == "sam2"
        assert validated_path.exists()
        assert validated_path.is_file()
