package com.stackroute.keepnote.configuration;

import com.stackroute.keepnote.model.Note;
import com.stackroute.keepnote.repository.NoteRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
@Configuration
public class BeanConfig {
    @Bean
    @Scope("prototype")
    public Note note()
    {
        Note note=new Note();
        note.setNoteId(1);
        note.setNoteTitle("ads");
        note.setNoteStatus("act");
        note.setNoteContent("content");
        return note;
    }
    @Bean
    public NoteRepository noteRepository()
    {
        return new NoteRepository();
    }
}
