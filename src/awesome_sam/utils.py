"""Utility functions for SAM models."""

from __future__ import annotations

from pathlib import Path
from typing import Any


def get_model_info(model_name: str) -> dict[str, Any]:
    """Get information about a SAM model.

    Args:
        model_name: Name of the SAM model variant.

    Returns:
        Dictionary containing model information.

    Raises:
        ValueError: If model_name is empty or invalid.

    Examples:
        >>> info = get_model_info("sam2-hiera-large")
        >>> print(info["name"])
        sam2-hiera-large
    """
    if not model_name:
        msg = "model_name cannot be empty"
        raise ValueError(msg)

    return {
        "name": model_name,
        "version": "2.1",
        "type": "foundation",
    }


def validate_image_path(image_path: str | Path) -> Path:
    """Validate and convert image path to Path object.

    Args:
        image_path: Path to the image file.

    Returns:
        Validated Path object.

    Raises:
        FileNotFoundError: If the image file does not exist.
        ValueError: If the path is not a file.

    Examples:
        >>> path = validate_image_path("image.jpg")
        >>> print(type(path))
        <class 'pathlib.Path'>
    """
    path = Path(image_path)

    if not path.exists():
        msg = f"Image file not found: {path}"
        raise FileNotFoundError(msg)

    if not path.is_file():
        msg = f"Path is not a file: {path}"
        raise ValueError(msg)

    return path
