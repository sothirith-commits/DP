.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;


# instance fields
.field public final synthetic $currentCoverRequestToken:J

.field public final synthetic $currentLyricRequestToken:J

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $music:Lcom/deepalhome/launcher/music/Music;

.field public final synthetic this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;JLcom/deepalhome/launcher/music/Music;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$currentCoverRequestToken:J

    iput-object p5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$music:Lcom/deepalhome/launcher/music/Music;

    iput-wide p6, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$currentLyricRequestToken:J

    return-void
.end method


# virtual methods
.method public final onCoverLoaded(Ljava/lang/String;)V
    .locals 9

    const-string v0, "cover"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-object v0, v2, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v8, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$key:Ljava/lang/String;

    iget-wide v4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$currentCoverRequestToken:J

    iget-object v7, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$music:Lcom/deepalhome/launcher/music/Music;

    move-object v1, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;JLjava/lang/String;Lcom/deepalhome/launcher/music/Music;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError()V
    .locals 8

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-object v6, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v7, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$key:Ljava/lang/String;

    iget-wide v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$currentLyricRequestToken:J

    const/16 v5, 0xf

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;JI)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onFavLoaded(Z)V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-object v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v2, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$key:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, p1, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLyricPayloadLoaded(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V
    .locals 9

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-object v7, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v8, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$key:Ljava/lang/String;

    iget-wide v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicChangedListener$1$onInfoChanged$1;->$currentLyricRequestToken:J

    const/4 v6, 0x2

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
