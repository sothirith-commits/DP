.class public final synthetic Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/app/AppCenterView;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;Lkotlin/jvm/internal/Ref$FloatRef;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/app/AppCenterView;

    iput-object p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p3, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;->f$2:I

    iget v1, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;->f$3:I

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/app/AppCenterView;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->$r8$lambda$cTRxsWHgSmQh8luTxNwjJJBXu9A(Lcom/deepalhome/launcher/app/AppCenterView;Lkotlin/jvm/internal/Ref$FloatRef;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
