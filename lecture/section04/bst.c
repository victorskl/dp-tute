// Binary search tree in C

typedef struct bst_struct *BST;

struct bst_struct {
     char    *key;
     int     value;
     BST     left;
     BST     right;
};

int countnodes(BST tree)
{
    if (tree == NULL) {
        return 0;
    } else {
        return 1 +
            countnodes(tree->left) +
            countnodes(tree->right);
    }
}

//  Searching a BST in C (iteration)
int search_bst(BST tree, char *key, int *value_ptr)
{
    while (tree != NULL) {
        int cmp_result;

        cmp_result = strcmp(key, tree->key);

        if (cmp_result == 0) {
            *value_ptr = tree->value;
            return TRUE;
        } else if (cmp_result < 0) {
             tree = tree->left;
        } else {
             tree = tree->right;
        }
    }
    return FALSE;
}

//  Searching a BST in C (recursion)
int search_bst(BST tree, char *key, int *value_ptr)
{
    if (tree == NULL) {
        return FALSE;
    } else {
        int cmp_result;

        cmp_result = strcmp(key, tree->key);

        if (cmp_result == 0) {
            *value_ptr = tree->value;
            return TRUE;
        } else if (cmp_result < 0) {
            return search_bst(tree->left, key, value_ptr);
        } else {
            return search_bst(tree->right, key, value_ptr);
        }
    }
}