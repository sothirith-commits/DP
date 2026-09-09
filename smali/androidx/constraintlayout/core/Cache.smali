.class public final Landroidx/constraintlayout/core/Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final arrayRowPool:Landroidx/core/util/Pools$SimplePool;

.field public mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

.field public final solverVariablePool:Landroidx/core/util/Pools$SimplePool;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {v0}, Landroidx/core/util/Pools$SimplePool;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/core/util/Pools$SimplePool;

    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {v0}, Landroidx/core/util/Pools$SimplePool;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/core/util/Pools$SimplePool;

    const/16 v0, 0x20

    new-array v0, v0, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    return-void
.end method
