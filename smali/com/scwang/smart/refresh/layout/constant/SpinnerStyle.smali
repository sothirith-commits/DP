.class public final Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

.field public static final FixedFront:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

.field public static final MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

.field public static final Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

.field public static final values:[Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;


# instance fields
.field public final front:Z

.field public final scale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    new-instance v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    invoke-direct {v3, v2, v2, v2}, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;-><init>(IZZ)V

    new-instance v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v1, v1}, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    new-instance v5, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v2, v1}, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v5, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    new-instance v6, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v2, v1}, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v6, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    filled-new-array {v0, v3, v4, v5, v6}, [Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sput-object v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    iput-boolean p3, p0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    return-void
.end method
