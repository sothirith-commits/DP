.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lme/wcy/lrcview/LrcView;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lme/wcy/lrcview/LrcView;FI)V
    .locals 0

    iput p3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;->f$0:Lme/wcy/lrcview/LrcView;

    iput p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;->f$1:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;->f$0:Lme/wcy/lrcview/LrcView;

    iget p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;->f$1:F

    iput p0, v0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->applyTextSize()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;->f$0:Lme/wcy/lrcview/LrcView;

    iget p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda5;->f$1:F

    iput p0, v0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->applyTextSize()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
