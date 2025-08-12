import tkinter as tk
from tkinter import ttk

def main():
    root = tk.Tk()
    root.title("Hello, World!")
    root.geometry("300x200")
    
    label = ttk.Label(root, text="Hello, World!", font=("Arial", 24))
    label.place(relx=0.5, rely=0.5, anchor="center")
    
    root.mainloop()

if __name__ == "__main__":
    main()