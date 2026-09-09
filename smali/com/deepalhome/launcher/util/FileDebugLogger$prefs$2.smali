.class public final Lcom/deepalhome/launcher/util/FileDebugLogger$prefs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/util/FileDebugLogger;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/util/FileDebugLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/FileDebugLogger$prefs$2;->this$0:Lcom/deepalhome/launcher/util/FileDebugLogger;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/FileDebugLogger$prefs$2;->this$0:Lcom/deepalhome/launcher/util/FileDebugLogger;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/FileDebugLogger;->prefsName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
