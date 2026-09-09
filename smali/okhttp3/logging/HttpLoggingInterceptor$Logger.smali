.class public interface abstract Lokhttp3/logging/HttpLoggingInterceptor$Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion;->$r8$clinit:I

    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;-><init>()V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    return-void
.end method
