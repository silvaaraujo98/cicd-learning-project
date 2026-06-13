import logging
#set the logging to show all the messages above INFO level
logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")

def main():
    logging.info("Hello from cicd-learning-project, but I was not deployed by a CI/CD pipeline")
    logging.info("Let´s try again!")


if __name__ == "__main__":
    main()
