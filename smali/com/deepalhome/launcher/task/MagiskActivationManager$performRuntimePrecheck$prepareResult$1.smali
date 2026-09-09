.class public final synthetic Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$1;->INSTANCE:Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "isWifiConnected()Z"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lcom/blankj/utilcode/util/NetworkUtils;

    const-string v3, "isWifiConnected"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final native invoke()Ljava/lang/Object;
.end method
