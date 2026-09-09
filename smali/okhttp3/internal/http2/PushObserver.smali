.class public interface abstract Lokhttp3/internal/http2/PushObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CANCEL:Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lokhttp3/internal/http2/PushObserver$Companion;->$r8$clinit:I

    new-instance v0, Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

    invoke-direct {v0}, Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/PushObserver;->CANCEL:Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

    return-void
.end method
