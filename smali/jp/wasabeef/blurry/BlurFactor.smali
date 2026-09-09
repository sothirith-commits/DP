.class public final Ljp/wasabeef/blurry/BlurFactor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public radius:I

.field public final sampling:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    iput v0, p0, Ljp/wasabeef/blurry/BlurFactor;->radius:I

    const/4 v0, 0x1

    iput v0, p0, Ljp/wasabeef/blurry/BlurFactor;->sampling:I

    return-void
.end method
