.class public final Lcom/deepalhome/launcher/util/IdUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/IdUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/IdUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntId()I
    .locals 3

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    const v1, 0x5f5e100

    const v2, 0x773593ff

    invoke-virtual {v0, v1, v2}, Lkotlin/random/Random;->nextInt(II)I

    move-result v0

    return v0
.end method
