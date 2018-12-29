import { Component, EventEmitter, Output } from "@angular/core";
import { NgForm } from '@angular/forms';

import Post from '../post.model';

@Component({
  templateUrl: './post-create.component.html',
  selector: 'app-post-create',
  styleUrls: ['./post-create.component.css'],
})

export class PostCreateComponent {
  @Output() postCreated = new EventEmitter<Post>();

  enteredContent = '';
  enteredTitle = '';

  onAddPost(form: NgForm) {
    if (form.invalid) {
      return
    }

    const post: Post = {
      title: form.value.title,
      content: form.value.content
    };
    this.postCreated.emit(post);
  }

}
