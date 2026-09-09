.class public final synthetic Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$3:F

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$IntRef;FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    iput p4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$3:F

    iput p5, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$4:I

    iput p6, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$5:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$initialTouchX"

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$initialOpacity"

    iget-object v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget p2, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$3:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget p2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, p1

    iget p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$4:I

    iget p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;->f$5:I

    invoke-static {p2, p1, p0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsOpacity()I

    move-result p2

    if-eq p0, p2, :cond_1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsOpacity(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyOpacity()V

    :cond_1
    :goto_0
    move v4, v5

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->playButtonClickAnimation(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resetHideTimer()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsOpacity()I

    move-result p0

    iput p0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p0, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    const p1, 0x7f130209

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :goto_1
    return v4
.end method
