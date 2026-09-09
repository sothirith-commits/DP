.class public final Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor$observe$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $listener:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $missingSceneDialog:Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

.field final synthetic $requestId:Ljava/lang/String;

.field final synthetic $requestMatched:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $sceneName:Ljava/lang/String;

.field final synthetic $timeout:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor$observe$1;->$requestMatched:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor$observe$1;->$requestId:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor$observe$1;->$sceneName:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor$observe$1;->$listener:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor$observe$1;->$timeout:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor$observe$1;->$missingSceneDialog:Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final native invoke(Ljava/lang/Object;)Ljava/lang/Object;
.end method
