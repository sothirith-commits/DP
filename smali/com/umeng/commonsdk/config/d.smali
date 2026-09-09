.class public final Lcom/umeng/commonsdk/config/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;

.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;

.field public static final l:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/HashMap;

    const/16 v0, 0x24

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/String;

    sput-object v2, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    const/16 v2, 0x26

    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    const/16 v3, 0x13

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    const/16 v4, 0xc

    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    const/4 v5, 0x0

    if-lez v1, :cond_1

    move v1, v5

    :goto_0
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_0

    sget-object v6, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v7

    aget v7, v7, v1

    invoke-static {v7}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->name(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v5

    :goto_1
    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v6

    aget v6, v6, v0

    invoke-static {v6}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->name$1(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v5

    :goto_2
    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    sget-object v1, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-static {v2}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->name$2(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v0, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    :goto_3
    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v0

    array-length v0, v0

    if-ge v5, v0, :cond_6

    sget-object v0, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    aget v1, v1, v5

    invoke-static {v1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->name$3(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "_LAST_FIELD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
