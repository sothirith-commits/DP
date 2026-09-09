.class public final synthetic Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/music/MusicBar;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/MusicBar;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/music/MusicBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/music/MusicBar;

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicBar;->access$getCurrentMusicAppPackageName$p(Lcom/deepalhome/launcher/music/MusicBar;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->launchCurrentMusicApp(Ljava/lang/String;)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/music/MusicBar;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/music/MusicBar;->$r8$lambda$C7ocs8SbRteE4e6kbYrDO24miY0(Lcom/deepalhome/launcher/music/MusicBar;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
