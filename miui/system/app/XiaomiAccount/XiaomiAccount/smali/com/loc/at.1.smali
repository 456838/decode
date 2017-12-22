.class public Lcom/loc/at;
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
        "Lcom/loc/O;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private anl:Lcom/loc/O;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/loc/A;->f:Ljava/lang/String;

    sput-object v0, Lcom/loc/at;->a:Ljava/lang/String;

    sget-object v0, Lcom/loc/A;->g:Ljava/lang/String;

    sput-object v0, Lcom/loc/at;->b:Ljava/lang/String;

    sget-object v0, Lcom/loc/A;->k:Ljava/lang/String;

    sput-object v0, Lcom/loc/at;->c:Ljava/lang/String;

    sget-object v0, Lcom/loc/A;->h:Ljava/lang/String;

    sput-object v0, Lcom/loc/at;->d:Ljava/lang/String;

    sget-object v0, Lcom/loc/A;->i:Ljava/lang/String;

    sput-object v0, Lcom/loc/at;->e:Ljava/lang/String;

    sget-object v0, Lcom/loc/A;->j:Ljava/lang/String;

    sput-object v0, Lcom/loc/at;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/at;->anl:Lcom/loc/O;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/loc/at;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/loc/bX;->aFc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ayS([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v5

    :cond_1
    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v5
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/loc/at;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/at;->anl:Lcom/loc/O;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/loc/at;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/at;->anl:Lcom/loc/O;

    invoke-virtual {v2}, Lcom/loc/O;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/at;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/at;->anl:Lcom/loc/O;

    invoke-virtual {v2}, Lcom/loc/O;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/at;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/at;->anl:Lcom/loc/O;

    invoke-virtual {v2}, Lcom/loc/O;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/loc/at;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/at;->anl:Lcom/loc/O;

    invoke-virtual {v2}, Lcom/loc/O;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/at;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/at;->anl:Lcom/loc/O;

    invoke-virtual {v2}, Lcom/loc/O;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/at;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/at;->anl:Lcom/loc/O;

    invoke-virtual {v2}, Lcom/loc/O;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/loc/at;->ayS([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
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

.method public synthetic avl(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/loc/O;

    invoke-virtual {p0, p1}, Lcom/loc/at;->ayR(Lcom/loc/O;)V

    return-void
.end method

.method public synthetic avm(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/loc/at;->ayQ(Landroid/database/Cursor;)Lcom/loc/O;

    move-result-object v0

    return-object v0
.end method

.method public ayQ(Landroid/database/Cursor;)Lcom/loc/O;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/loc/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/loc/at;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/loc/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    new-instance v1, Lcom/loc/cw;

    invoke-direct {v1, v2, v3, v4}, Lcom/loc/cw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/loc/cw;->a(Z)Lcom/loc/cw;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/loc/cw;->a(Ljava/lang/String;)Lcom/loc/cw;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/loc/cw;->aFJ([Ljava/lang/String;)Lcom/loc/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/cw;->a()Lcom/loc/O;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/loc/l;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public ayR(Lcom/loc/O;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/at;->anl:Lcom/loc/O;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/A;->a:Ljava/lang/String;

    return-object v0
.end method
