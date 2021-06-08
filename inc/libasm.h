/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pruiz-ca <pruiz-ca@student.42madrid.co>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/22 01:29:45 by pruiz-ca          #+#    #+#             */
/*   Updated: 2021/06/08 11:20:12 by pruiz-ca         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <unistd.h>
# include <stdlib.h>

typedef struct s_list
{
	void			*data;
	struct s_list	*next;
}					t_list;

int		ft_strlen(char *c);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strcpy(char *dst, const char *src);
char	*ft_strdup(const char *s1);
ssize_t	ft_read(int fildes, void *buf, size_t nbyte);
ssize_t	ft_write(int fildes, void *buf, size_t nbyte);
void	ft_list_push_front(t_list **begin_list, void *data);
int		ft_list_size(t_list *begin_list);

#endif
