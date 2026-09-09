.class public final synthetic Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/FrameLayout;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout;IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;->f$0:Landroid/widget/FrameLayout;

    iput p2, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "$borderedView"

    iget-object v1, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;->f$0:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;->f$1:I

    int-to-float v0, v0

    const v2, 0x43aac000    # 341.5f

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;->f$2:I

    int-to-float v0, v0

    const v2, 0x43d38000    # 423.0f

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget p0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;->f$3:F

    invoke-virtual {v1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
