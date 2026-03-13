import "@/styles/main.scss";

import { Application } from "@hotwired/stimulus";
import HelloController from "@/stimulus/controllers/hello_controller";

const application = Application.start();

application.register("auth", HelloController);
