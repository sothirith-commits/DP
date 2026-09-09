.class public final Lcom/deepalhome/launcher/adb/AdbConnectionManager$appName$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager$appName$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/adb/AdbConnectionManager$appName$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/adb/AdbConnectionManager$appName$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/adb/AdbConnectionManager$appName$2;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager$appName$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    const v0, 0x7f1300b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
