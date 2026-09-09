.class public final Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;->$r8$classId:I

    iput-object p2, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget p1, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->resetMediaPlayer()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->playerDefaultUI(Z)V

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object p3, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;->this$0:Ljava/lang/Object;

    check-cast p3, Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    iget-object v0, p3, Lcom/luck/picture/lib/engine/MediaPlayerEngine;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object p3, p3, Lcom/luck/picture/lib/engine/MediaPlayerEngine;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;

    iget-object p3, p3, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    invoke-virtual {p3}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->playerDefaultUI()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
