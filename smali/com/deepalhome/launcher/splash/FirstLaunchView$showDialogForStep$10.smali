.class public final Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$10;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$10;

    invoke-direct {v0}, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$10;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$10;->INSTANCE:Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$10;

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
    .locals 0

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->exitApp()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
