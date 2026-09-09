.class public final Lcom/deepalhome/launcher/task/TaskShareManager$ApiEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final downloadUrl:Lkotlin/jvm/functions/Function1;

.field public final uploadUrl:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "uploadUrl"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "downloadUrl"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/TaskShareManager$ApiEndpoint;->uploadUrl:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/TaskShareManager$ApiEndpoint;->downloadUrl:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native hashCode()I
.end method

.method public final native toString()Ljava/lang/String;
.end method
