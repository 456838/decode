.class public Lcom/loc/aJ;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# instance fields
.field private anR:Lcom/loc/cv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/loc/cv;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/loc/aJ;->anR:Lcom/loc/cv;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/aJ;->anR:Lcom/loc/cv;

    invoke-interface {v0, p1}, Lcom/loc/cv;->avM(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/loc/aJ;->anR:Lcom/loc/cv;

    invoke-interface {v0, p1, p2, p3}, Lcom/loc/cv;->avN(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
