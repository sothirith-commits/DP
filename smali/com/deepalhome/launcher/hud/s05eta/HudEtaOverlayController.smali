.class public final Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final display:Landroid/view/Display;

.field public rootView:Landroid/widget/FrameLayout;

.field public showing:Z

.field public textView:Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;

.field public windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->rootView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->rootView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->textView:Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;

    iput-object v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->windowManager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->showing:Z

    return-void
.end method

.method public final updateTextConfig(Ljava/lang/String;IIII)V
    .locals 1

    const-string v0, "text"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->textView:Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;

    if-eqz p0, :cond_1

    int-to-float p2, p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "121.14.8 km / 26 min | Arrive 18:10"

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->displayText:Ljava/lang/String;

    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textSizePx:F

    const/16 p1, 0x46

    const/16 p2, 0x64

    invoke-static {p3, p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    const/16 p3, 0xff

    mul-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0xb2

    invoke-static {p1, v0, p3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textAlpha:I

    const/4 p1, 0x0

    invoke-static {p4, p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textXPercent:I

    invoke-static {p5, p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textYPercent:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method