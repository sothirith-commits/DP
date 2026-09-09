.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v2, "$title"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    const-string v3, "$singer"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->buildMusicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->likeBtn:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;->f$3:Z

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method
