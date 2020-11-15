ALTER TABLE store.store
    ADD FOREIGN KEY (manager_staff_id) REFERENCES store.staff (staff_id);
