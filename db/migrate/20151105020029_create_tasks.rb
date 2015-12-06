class CreateTasks < ActiveRecord::Migration
  def change
create_table :tasks do |t|
      t.belongs_to :project, index: true
      t.belongs_to :user, index: true
      
      t.string :title
      # This Datetime variables will store the time an user
      # takes the project piece to do. The end_time depends on
      # the start_time and the difficult of the task.
      t.datetime :start_time
      t.datetime :end_time
      t.integer :difficult
      t.text :description

      t.timestamps null: false
    end
  end
end
