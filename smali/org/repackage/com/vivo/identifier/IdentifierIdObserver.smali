.class public final Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;


# direct methods
.method public constructor <init>(Lorg/repackage/com/vivo/identifier/IdentifierIdClient;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->d:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    iput p2, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->c:I

    iput-object v0, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->d:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->c:I

    iget-object p0, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "VMS_SDK_Observer"

    const-string p1, "mIdentifierIdClient is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
