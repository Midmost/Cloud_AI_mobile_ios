class Song(object):

    def __init__(self, lyrics):
        self.lyrics = lyrics

    def sing_a_song(self):
        for line in self.lyrics:
            print(line)

