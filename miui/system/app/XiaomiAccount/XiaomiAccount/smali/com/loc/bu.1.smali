.class public Lcom/loc/bu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/loc/ai;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/loc/ai",
        "<",
        "Lcom/loc/bM;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private aqF:Lcom/loc/bM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/loc/A;->o:Ljava/lang/String;

    sput-object v0, Lcom/loc/bu;->b:Ljava/lang/String;

    sget-object v0, Lcom/loc/A;->p:Ljava/lang/String;

    sput-object v0, Lcom/loc/bu;->c:Ljava/lang/String;

    sget-object v0, Lcom/loc/A;->q:Ljava/lang/String;

    sput-object v0, Lcom/loc/bu;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bu;->aqF:Lcom/loc/bM;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bu;->aqF:Lcom/loc/bM;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/loc/bu;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bu;->aqF:Lcom/loc/bM;

    invoke-virtual {v2}, Lcom/loc/bM;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/loc/bu;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bu;->aqF:Lcom/loc/bM;

    invoke-virtual {v2}, Lcom/loc/bM;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/loc/bu;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bu;->aqF:Lcom/loc/bM;

    invoke-virtual {v2}, Lcom/loc/bM;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public aDL(Landroid/database/Cursor;)Lcom/loc/bM;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v3, :cond_0

    move v4, v0

    :goto_0
    if-eqz v5, :cond_1

    move v3, v0

    :goto_1
    if-eqz v6, :cond_2

    :goto_2
    new-instance v1, Lcom/loc/bM;

    invoke-direct {v1}, Lcom/loc/bM;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, v4}, Lcom/loc/bM;->a(Z)V

    invoke-virtual {v1, v0}, Lcom/loc/bM;->aEM(Z)V

    invoke-virtual {v1, v3}, Lcom/loc/bM;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public aDM(Lcom/loc/bM;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bu;->aqF:Lcom/loc/bM;

    return-void
.end method

.method public synthetic avl(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/loc/bM;

    invoke-virtual {p0, p1}, Lcom/loc/bu;->aDM(Lcom/loc/bM;)V

    return-void
.end method

.method public synthetic avm(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/loc/bu;->aDL(Landroid/database/Cursor;)Lcom/loc/bM;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/A;->e:Ljava/lang/String;

    return-object v0
.end method
