SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 57
AND u.Views <= 839
AND u.DownVotes >= 57
AND u.DownVotes <= 351
AND u.UpVotes <= 223
AND c.CreationDate >= 445
AND c.CreationDate <= 1510
AND ph.CreationDate >= 253
AND ph.CreationDate <= 1152
AND v.CreationDate >= 430
AND v.CreationDate <= 681

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;