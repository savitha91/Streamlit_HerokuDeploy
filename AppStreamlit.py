import streamlit as st
from PIL import Image

def main():
        st.header("Streamlit app in Heroku")
        image = Image.open('welcome.jpeg')
        st.image(image, use_column_width = True)




if __name__ == "__main__":
    main()