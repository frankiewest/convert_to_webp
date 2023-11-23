# WebP Image Converter Script

This script automates the conversion of JPEG and PNG images to WebP format. It's designed to work on macOS and requires the `cwebp` command-line tool for the conversion process. The script converts all JPEG and PNG images in a specified directory and places the converted WebP images into a `/webp` subdirectory within the same directory.

## Prerequisites

Before running the script, you need to have the following installed on your Mac:

- **Homebrew**: A package manager for macOS. If not already installed, you can install it by running the following command in the Terminal:
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

- **WebP**: The WebP command-line tools, including `cwebp`, can be installed via Homebrew:
  ```bash
  brew install webp

## Installation

1. **Download the Script**: Clone this repository or download `convert_to_webp.sh` script.
2. **Make the Script Executable**: Navigate to the script's directory in the Terminal and run:
   ```bash
   chmod +x convert_to_webp.sh

## Usage

To use the script, navigate to the directory where the script is located and run it with the directory of images as an argument. The script will process all JPEG and PNG files in the specified directory.
```bash
./convert_to_webp.sh /path/to/image/directory
```

The script will create a `/webp` subdirectory in the specified directory and place all converted WebP images into this subdirectory.

## Script Details

The script performs the following actions:

- Checks if the specified directory exists.
- Creates a /webp subdirectory within the specified directory if it doesn't already exist.
- Finds all JPEG and PNG files in the specified directory (without searching subdirectories).
- Converts each found image to WebP format and saves it in the /webp subdirectory.
- Outputs the status of each conversion.

## Note

- This script is intended for use on macOS.
- Ensure that you have the necessary permissions to read the images in the specified directory and write to the `/webp` subdirectory.

## License

This script is released under [MIT License](https://chat.openai.com/c/LICENSE).
