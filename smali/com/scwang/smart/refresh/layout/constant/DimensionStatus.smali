.class public final Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CodeExact:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

.field public static final DefaultUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

.field public static final XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

.field public static final XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

.field public static final XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

.field public static final values:[Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;


# instance fields
.field public final notified:Z

.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    new-instance v2, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    new-instance v4, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v4, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    new-instance v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v3}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    new-instance v6, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v6, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    new-instance v7, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/4 v8, 0x5

    invoke-direct {v7, v8, v3}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    new-instance v8, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/4 v9, 0x6

    invoke-direct {v8, v9, v1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v8, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    new-instance v9, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/4 v10, 0x7

    invoke-direct {v9, v10, v3}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    new-instance v10, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/16 v11, 0x8

    invoke-direct {v10, v11, v1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    new-instance v11, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/16 v12, 0x9

    invoke-direct {v11, v12, v3}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v11, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    new-instance v12, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/16 v13, 0xa

    invoke-direct {v12, v13, v1}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    new-instance v14, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-direct {v14, v13, v3}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;-><init>(IZ)V

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v14

    filled-new-array/range {v0 .. v11}, [Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    move-result-object v0

    sput-object v0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->values:[Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    return-void
.end method


# virtual methods
.method public final canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z
    .locals 2

    iget p1, p1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    iget v0, p0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    if-lt v0, p1, :cond_2

    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    if-ne v1, p0, :cond_1

    :cond_0
    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
