.class public final Lcom/deepalhome/launcher/task/TaskShareManager$downloadWithEndpoint$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic $endpoints:Ljava/util/List;

.field public final synthetic $index:I

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $onError:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onSuccess:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p6, p0, Lcom/deepalhome/launcher/task/TaskShareManager$downloadWithEndpoint$2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/task/TaskShareManager$downloadWithEndpoint$2;->$endpoints:Ljava/util/List;

    iput p2, p0, Lcom/deepalhome/launcher/task/TaskShareManager$downloadWithEndpoint$2;->$index:I

    iput-object p3, p0, Lcom/deepalhome/launcher/task/TaskShareManager$downloadWithEndpoint$2;->$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/task/TaskShareManager$downloadWithEndpoint$2;->$onSuccess:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/deepalhome/launcher/task/TaskShareManager$downloadWithEndpoint$2;->$onError:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native onFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
.end method

.method public final native onResponse(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
.end method
