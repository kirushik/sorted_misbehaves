This is a demo of a certain regression in recent versions of the `sorted` gem
(`sorted-activerecord` to be exact.)

This bug is fixed (https://github.com/mynameisrufus/sorted-activerecord/issues/2), but the repo will stay to keep the link in the bugreport valid.

The issue is, we might want to sort our objects by their associations fields.
In this demo project, each `Post` belongs to a certain `User`,
so `post.user.name` is a valid attribute, and we might want to sort by it.

Unfortunately, this will not work:
```ruby
Post.references(:user).includes(:user).sorted(order: 'users.name ASC')
```
