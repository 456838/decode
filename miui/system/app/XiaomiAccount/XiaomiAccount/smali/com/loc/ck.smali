.class public Lcom/loc/ck;
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
        "Lcom/loc/m;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private arZ:Lcom/loc/m;

.field private asa:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/loc/A;->alc:Ljava/lang/String;

    sput-object v0, Lcom/loc/ck;->a:Ljava/lang/String;

    sget-object v0, Lcom/loc/A;->m:Ljava/lang/String;

    sput-object v0, Lcom/loc/ck;->b:Ljava/lang/String;

    sget-object v0, Lcom/loc/A;->n:Ljava/lang/String;

    sput-object v0, Lcom/loc/ck;->c:Ljava/lang/String;

    sget-object v0, Lcom/loc/A;->f:Ljava/lang/String;

    sput-object v0, Lcom/loc/ck;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ck;->arZ:Lcom/loc/m;

    iput p1, p0, Lcom/loc/ck;->asa:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    sget-object v0, Lcom/loc/ck;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/loc/ck;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/loc/bX;->aFc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck;->arZ:Lcom/loc/m;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/loc/ck;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/ck;->arZ:Lcom/loc/m;

    invoke-virtual {v2}, Lcom/loc/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/ck;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/ck;->arZ:Lcom/loc/m;

    invoke-virtual {v2}, Lcom/loc/m;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/loc/ck;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/ck;->arZ:Lcom/loc/m;

    invoke-virtual {v2}, Lcom/loc/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/ck;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/ck;->arZ:Lcom/loc/m;

    invoke-virtual {v2}, Lcom/loc/m;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
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

.method public aFt(Landroid/database/Cursor;)Lcom/loc/m;
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v1, Lcom/loc/m;

    invoke-direct {v1}, Lcom/loc/m;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/loc/m;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/loc/m;->a(I)V

    invoke-static {v4}, Lcom/loc/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/m;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/loc/m;->b(I)V
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

.method public aFu(Lcom/loc/m;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ck;->arZ:Lcom/loc/m;

    return-void
.end method

.method public synthetic avl(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/loc/m;

    invoke-virtual {p0, p1}, Lcom/loc/ck;->aFu(Lcom/loc/m;)V

    return-void
.end method

.method public synthetic avm(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/loc/ck;->aFt(Landroid/database/Cursor;)Lcom/loc/m;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/loc/ck;->asa:I

    invoke-static {v0}, Lcom/loc/aG;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
