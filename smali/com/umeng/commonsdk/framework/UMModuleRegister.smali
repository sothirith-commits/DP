.class public final Lcom/umeng/commonsdk/framework/UMModuleRegister;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mModuleAppContext:Landroid/content/Context;

.field public static mModuleMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eventType2ModuleName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x4001

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5000

    if-gt p0, v0, :cond_0

    const-string v0, "push"

    goto :goto_0

    :cond_0
    const-string v0, "analytics"

    :goto_0
    const/16 v1, 0x6001

    if-lt p0, v1, :cond_1

    const/16 v1, 0x7000

    if-gt p0, v1, :cond_1

    const-string v0, "share"

    :cond_1
    const v1, 0x8001

    if-lt p0, v1, :cond_2

    const v1, 0x9000

    if-gt p0, v1, :cond_2

    const-string v0, "internal"

    :cond_2
    const v1, 0x9051

    if-lt p0, v1, :cond_3

    const v1, 0x9100

    if-gt p0, v1, :cond_3

    const-string v0, "process"

    :cond_3
    const v1, 0x9101

    if-lt p0, v1, :cond_4

    const v1, 0x9110

    if-gt p0, v1, :cond_4

    const-string v0, "appstatus"

    :cond_4
    return-object v0
.end method
