.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lme/wcy/lrcview/LrcView;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lme/wcy/lrcview/LrcView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;->f$0:Lme/wcy/lrcview/LrcView;

    iput p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;->f$1:F

    iput p3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;->f$0:Lme/wcy/lrcview/LrcView;

    iget v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;->f$1:F

    iput v1, v0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    iget p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;->f$2:F

    iput p0, v0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->applyTextSize()V

    return-void
.end method
