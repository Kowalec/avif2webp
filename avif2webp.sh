#!/bin/bash
ī
# Check if required tools are installed
check_dependencies() {
    local missing_deps=()
    
    if ! command -v avifdec &> /dev/null; then
        missing_deps+=("libavif")
    fi
    
    if ! command -v convert &> /dev/null; then
        missing_deps+=("imagemagick")
    fi
    
    if [ ${#missing_deps[@]} -ne 0 ]; then
        echo "Error: Missing required tools!"
        echo "Please install the following packages:"
        
        if [[ "$OSTYPE" == "darwin"* ]]; then
            echo "Run: brew install ${missing_deps[*]}"
        else
            echo "For Ubuntu/Debian: sudo apt-get install ${missing_deps[*]}"
            echo "For Fedora: sudo dnf install ${missing_deps[*]}"
        fi
        exit 1
    fi
}

# Convert AVIF files to WEBP
convert_files() {
    local converted=0
    local failed=0
    
    for file in *.{png,jpg}.avif; do
        # Skip if no matching files
        [[ -e "$file" ]] || continue
        
        base_name="${file%.*}"
        echo "Converting: $file"
        
        if avifdec "$file" "${base_name}.png" && \
           convert "${base_name}.png" "${base_name}.webp" && \
           rm "${base_name}.png"; then
            echo "✓ Successfully converted: $file -> ${base_name}.webp"
            ((converted++))
        else
            echo "✗ Failed to convert: $file"
            ((failed++))
        fi
    done
    
    echo -e "\nConversion completed!"
    echo "Successfully converted: $converted files"
    [[ $failed -gt 0 ]] && echo "Failed conversions: $failed files"
}

# Main execution
check_dependencies
convert_files
