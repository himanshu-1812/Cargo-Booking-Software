# Cargo Booking Software

<p align="left">
  <img src="https://img.shields.io/github/repo-size/himanshu-1812/Cargo-Booking-Software?color=0A66C2" />
  <img src="https://img.shields.io/github/last-commit/himanshu-1812/Cargo-Booking-Software?color=F39C12" />
  <img src="https://img.shields.io/github/issues/himanshu-1812/Cargo-Booking-Software?color=E74C3C" />
  <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" />
  <a href="#-license"><img src="https://img.shields.io/badge/license-OpenSource-blue.svg" /></a>
</p>

<p align="center">
  <b>Web-based cargo booking & tracking app built with Java (JSP/Servlets), MySQL, and a responsive UI.</b>
</p>

---

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)


---

## Overview
The **Cargo Booking Software** helps users and admins manage cargo bookings, view shipment history, and track status. It’s ideal for coursework, demos, and small logistics workflows.

---

## Features
- **Authentication** – Register & login
- **Booking** – Create, view, and manage cargo bookings
- **History** – See previous shipments & statuses
- **Admin Actions** – Manage users and bookings (if enabled)
- **Responsive UI** – Mobile-friendly pages
- **Database** – MySQL-backed persistence

---

## Tech Stack

<p align="center">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg" height="48" alt="Java"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" height="48" alt="MySQL"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" height="48" alt="JavaScript"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bootstrap/bootstrap-original.svg" height="48" alt="Bootstrap"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" height="48" alt="HTML5"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg" height="48" alt="CSS3"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" height="48" alt="Git"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" height="48" alt="GitHub"/>
</p>

---

## Getting Started

### 1) Clone
```bash
git clone https://github.com/himanshu-1812/Cargo-Booking-Software.git
cd Cargo-Booking-Software

```
### 2) Prerequisites
- **JDK**: 8+ (11 recommended)
- **Server**: Apache Tomcat 9+ (or your preferred servlet container)
- **DB**: MySQL 5.7/8.0

### 3) Database Setup
- Create a database, e.g. `cargo_db`
- Import your schema/data if you have an SQL dump
- Update DB credentials in your configuration (e.g., a `connectDB`/datasource class, env vars, or `context.xml`)

### 4) Run (two common ways)

**A. Deploy a WAR**
1. Build or use the existing `.war`
2. Copy it to: `<TOMCAT_HOME>/webapps/`
3. Start Tomcat and visit: `http://localhost:8080/<cargo_booking>`

**B. Run from IDE**
1. Import into Eclipse/IntelliJ as a Dynamic Web/App project
2. Configure Tomcat server in IDE
3. Run on server → Open `http://localhost:8080/<cargo_booking>`

## Project Structure
| Path            | Purpose                                      |
|-----------------|----------------------------------------------|
| **css/**        | Stylesheets for layouts, themes, and UI design |
| **fonts/**      | Custom icon fonts & typography                 |
| **images/**     | Screenshots, logos, and other media assets     |
| **js/**         | Client-side scripts for dynamic functionality |
| **META-INF/**   | Manifest configuration & metadata              |
| **WEB-INF/**    | `web.xml`, compiled classes, and libraries     |
| **.jsp / .html**| Frontend views and pages (UI templates)        |


---

## Roadmap
- Email/SMS notifications  
- Role-based access (Admin/User)  
- Advanced tracking & analytics  
- Docker setup for one-command run  

---

## Contributing
Contributions are welcome!  

1. Fork the repo  
2. Create a feature branch:  
   ```bash
   git checkout -b feat/awesome-thing
   ```
Commit your changes:
   ```bash
   git commit -m "feat: add awesome thing"
   ```
Push and open a PR

## License

This project is open source.

## Contact
<p> 
  <a href="https://github.com/himanshu-1812" target="_blank"> 
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" height="28" alt="GitHub"/> 
  </a> &nbsp;&nbsp; 
  <a href="https://www.linkedin.com/in/himanshu-suryawanshi-00214637b" target="_blank"> 
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg" height="28" alt="LinkedIn"/> 
  </a> 
</p>

