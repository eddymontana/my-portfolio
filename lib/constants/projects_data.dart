// lib/constants/projects_data.dart

import 'package:my_portfolio/models/project.dart';

List<Project> myProjects = [
  Project(
    name: "Intelligent Chatbot with Streamlit",
    description:
        "Developed and deployed a conversational AI chatbot using Python and the Streamlit framework. The application provides an intuitive user interface for real-time interaction with a powerful language model.",
    image: "assets/chatbot-interface.PNG",
    technologies: "Python, Streamlit, Machine Learning, NLP",
    link: "https://github.com/eddymontana/intelligent-chatbot-streamlit",
  ),
  Project(
    name: "AI Fashion Recommender",
    description:
        "Developed a deep learning model to provide fashion recommendations based on user input. The system uses computer vision to analyze clothing images and suggest similar styles.",
    image: "assets/women1.PNG",
    technologies: "Python, NLTK, Scikit-learn, NLP",
    link: "https://github.com/eddymontana/cosine-similarity",
  ),
  Project(
    name: "Financial Portfolio Optimizer",
    description:
        "Developed a data-driven model to calculate and recommend the optimal asset allocation for a financial portfolio. The solution uses historical data analysis to maximize returns for a given level of risk.",
    image: "assets/screenshot-4.PNG",
    technologies: "Python, Pandas, NumPy, Matplotlib",
    link: "https://github.com/eddymontana/portfolio-optimization",
  ),
  Project(
    name: "Health Monitoring System",
    description:
        "Designed and implemented a data pipeline for a health monitoring system. The project focuses on collecting, processing, and visualizing health data from wearable sensors to provide actionable insights.",
    image: "assets/health-metrics-monitor4.PNG",
    technologies: "Python, IoT, Pandas, Data Visualization",
    link: "https://github.com/eddymontana/health-monitoring",
  ),
];
