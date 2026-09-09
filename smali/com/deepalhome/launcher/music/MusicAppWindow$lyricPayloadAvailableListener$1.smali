.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicInfoUtil$OnLyricPayloadAvailableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V
    .locals 9

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "title"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "singer"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payload"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;->this$0:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-object p0, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v8, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;I)V

    invoke-virtual {p0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    const-string v0, "title"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "singer"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payload"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;->this$0:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-object p0, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v8, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;I)V

    invoke-virtual {p0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
