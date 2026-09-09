.class public final Lcom/deepalhome/launcher/task/TaskExecutor$executeMagiskActivationAction$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $onComplete:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeMagiskActivationAction$1$2;->$progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/TaskExecutor$executeMagiskActivationAction$1$2;->$onComplete:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final native invoke(Ljava/lang/Object;)Ljava/lang/Object;
.end method
