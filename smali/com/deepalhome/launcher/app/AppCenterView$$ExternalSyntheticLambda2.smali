.class public final synthetic Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(IIFFFFLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$2:F

    iput p4, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$3:F

    iput p5, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$4:F

    iput p6, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$5:F

    iput-object p7, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$6:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    iget v5, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$5:F

    iget-object v6, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$6:Landroid/view/View;

    iget v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$2:F

    iget v3, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$3:F

    iget v4, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;->f$4:F

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/app/AppCenterView;->$r8$lambda$QluUSA9cO6WaAPjUh35ysmYDFUo(IIFFFFLandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
