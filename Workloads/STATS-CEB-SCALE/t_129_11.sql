SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 3
AND p.CommentCount <= 25
AND pl.LinkTypeId = 1
AND u.Reputation >= 543
AND u.Reputation <= 870
AND u.DownVotes >= 7
AND u.DownVotes <= 143
AND c.CreationDate >= 719
AND c.CreationDate <= 1167
AND ph.CreationDate >= 897

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;