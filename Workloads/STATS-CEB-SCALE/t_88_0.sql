SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 79
AND p.CommentCount >= 7
AND p.CommentCount <= 27
AND u.DownVotes = 5
AND u.UpVotes >= 46
AND u.UpVotes <= 403

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;