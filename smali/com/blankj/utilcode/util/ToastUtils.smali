.class public final Lcom/blankj/utilcode/util/ToastUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

.field public static sWeakToast:Ljava/lang/ref/WeakReference;


# instance fields
.field public final mBgColor:I

.field public final mBgResource:I

.field public final mGravity:I

.field public final mIcons:[Landroid/graphics/drawable/Drawable;

.field public final mTextColor:I

.field public final mTextSize:I

.field public final mXOffset:I

.field public final mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/ToastUtils;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mGravity:I

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mXOffset:I

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mYOffset:I

    const v1, -0x1000001

    iput v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mBgColor:I

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mBgResource:I

    iput v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->mTextColor:I

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mTextSize:I

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static show(Ljava/lang/String;ILcom/blankj/utilcode/util/ToastUtils;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "toast null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "toast nothing"

    :cond_1
    :goto_0
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$2;-><init>(Lcom/blankj/utilcode/util/ToastUtils;Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs showLong(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/String;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static showShort(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    sget-object v1, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/String;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static varargs showShort(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->DEFAULT_MAKER:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/String;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method
