.class public final synthetic Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/music/MusicBar;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/MusicBar;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/MusicBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/MusicBar;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicBar;->$r8$lambda$rMBTEC92QSGWLz3R3TMvnQkfy8U(Lcom/deepalhome/launcher/music/MusicBar;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicBar;->$r8$lambda$hsSSIsbbOkiYrqU67hI5hKMm_uM(Lcom/deepalhome/launcher/music/MusicBar;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicBar;->$r8$lambda$KazdzkdAJ_2PXnlp4rQ6HoHnxqA(Lcom/deepalhome/launcher/music/MusicBar;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
