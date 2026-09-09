.class public final Lcom/deepalhome/launcher/task/MagiskActivationManager$executeActivation$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# instance fields
.field public final synthetic $onFailure:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onProgress:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onSuccess:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/task/MagiskActivationManager$executeActivation$1;->$onProgress:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/MagiskActivationManager$executeActivation$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/deepalhome/launcher/task/MagiskActivationManager$executeActivation$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final native doInBackground()Ljava/lang/Object;
.end method

.method public final native onCancel()V
.end method

.method public final native onFail(Ljava/lang/Throwable;)V
.end method

.method public final native onSuccess(Ljava/lang/Object;)V
.end method
