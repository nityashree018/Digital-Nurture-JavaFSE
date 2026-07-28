import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';

import { Header } from './header/header';
import { CourseList } from './course-list/course-list';
import { StudentProfile } from './student-profile/student-profile';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [
    RouterOutlet,
    Header,
    CourseList,
    StudentProfile
  ],
  templateUrl: './app.html',
  styleUrl: './app.css'
})
export class App {
  protected readonly title = signal('student-course-portal');
}