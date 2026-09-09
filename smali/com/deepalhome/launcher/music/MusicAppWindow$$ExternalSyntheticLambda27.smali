.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public synthetic constructor <init>(JLcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda27;->f$0:J

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda27;->f$1:Lcom/deepalhome/launcher/music/MusicAppWindow;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    sget v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda27;->f$1:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "animator"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v2, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverLayoutToken:J

    iget-wide v4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda27;->f$0:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method
