.class public final Lcom/deepalhome/launcher/settings/HiddenTapReveal;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isRevealed:Z

.field public final requiredTapCount:I

.field public tapCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/settings/HiddenTapReveal;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    iput p1, p0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->requiredTapCount:I

    return-void
.end method
